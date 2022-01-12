
--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_data`
--

CREATE TABLE `login_data` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_otp` int(6) NOT NULL,
  `last_activity` datetime NOT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register_user`
--

CREATE TABLE `register_user` (
  `register_user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_activation_code` varchar(250) NOT NULL,
  `user_email_status` enum('not verified','verified') NOT NULL,
  `user_otp` int(11) NOT NULL,
  `user_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_avatar` varchar(100) NOT NULL,
  `user_birthdate` date NOT NULL,
  `user_gender` enum('Male','Female') NOT NULL,
  `user_address` text NOT NULL,
  `user_city` varchar(250) NOT NULL,
  `user_zipcode` varchar(30) NOT NULL,
  `user_state` varchar(250) NOT NULL,
  `user_country` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_data`
--
ALTER TABLE `login_data`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`register_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_data`
--
ALTER TABLE `login_data`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `register_user`
--
ALTER TABLE `register_user`
  MODIFY `register_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
  
--
-- Table structure for table `friend_request`
--

CREATE TABLE `friend_request` (
  `request_id` int(11) NOT NULL,
  `request_from_id` int(11) NOT NULL,
  `request_to_id` int(11) NOT NULL,
  `request_status` enum('Pending','Confirm','Reject') NOT NULL,
  `request_notification_status` enum('No','Yes') NOT NULL,
  `request_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_request`
--
ALTER TABLE `friend_request`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friend_request`
--
ALTER TABLE `friend_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;
  
--
-- Table structure for table `posts_table`
--

CREATE TABLE `posts_table` (
  `posts_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `post_code` varchar(100) NOT NULL,
  `post_datetime` datetime NOT NULL,
  `post_status` enum('Publish', 'Draft') NOT NULL,
  `post_type` enum('Text', 'Media') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts_table`
--
ALTER TABLE `posts_table`
  ADD PRIMARY KEY (`posts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts_table`
--
ALTER TABLE `posts_table`
  MODIFY `posts_id` int(11) NOT NULL AUTO_INCREMENT;
  
--
-- Table structure for table `media_table`
--

CREATE TABLE `media_table` (
  `media_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `media_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media_table`
--
ALTER TABLE `media_table`
  ADD PRIMARY KEY (`media_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media_table`
--
ALTER TABLE `media_table`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT;